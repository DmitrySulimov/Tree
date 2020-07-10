const fs = require("fs");
const path = require("path")
const mysql = require("mysql2");

module.exports.makeTree = makeTree;


const connection = mysql.createConnection({
    host: "localhost",
    user: "root",
    database: "new_schema",
    password: "password"
}).promise();

//Проверка или данные из поиска есть в базе, если нет - добавляем их
async function checkData(pathArray) {
    const sql = `SELECT * FROM branches`;
    let databaseArray = [];
    var resultArray = pathArray.slice();
    var result = await connection.query(sql);
    result[0].forEach(element => {
        databaseArray.push(Array.from([element.name, element.nesting_level, element.parent_name]));
    });
    for (var i = 0; i < pathArray.length; i++) {
        databaseArray.forEach(resultArrayElement => {
            if (pathArray[i].length == resultArrayElement.length && pathArray[i].every((v, j) => v === resultArrayElement[j])) {
                var index = resultArray.indexOf(pathArray[i]);
                resultArray.splice(index, 1);
            }
        });
    }
    return resultArray;
}

//Добавляем данные, которых нет в базе из поиска в базу
var sendData = async function sendData(resultArray) {
    const sql = `INSERT INTO branches(name, nesting_level, parent_name) VALUES ?`;
    await connection.query(sql, [resultArray], function (err, results) {
        if (err) console.log(err);
        console.log(results);
    });
}

//Получаем данные о всех папках, который встречаються по заданому пути
async function getPathData(pathPart) {
    if (pathPart == '') return []
    let pathDataArray = [];
    const sql = `SELECT * FROM branches WHERE parent_name=?`;
    var results = await connection.query(sql, pathPart)
    results[0].forEach(element => {
        pathDataArray.push(Array.from([element.name, element.nesting_level, element.parent_name]));
    });
    return pathDataArray;
}

async function makeTree(pathPart) {
    let pathArray = new Array();
    let currentPath = "";
    let pathDataArray = [];
    let pathSplited = path.normalize(pathPart).split('\\');

    // pathArray = makePathArray(path.normalize(pathPart).split('\\'), pathArray, currentPath, 0);
    // console.log(pathArray);

    for (var i = 0; i < pathSplited.length; i++) {
        if (currentPath != "" && !fs.statSync(currentPath + "/" + pathSplited[i]).isDirectory()) {
            break
        }
        if (i == pathSplited.length - 1) {
            currentPath = path.join(currentPath, pathSplited[i]);
        }
        else {
            currentPath = path.join(currentPath, pathSplited[i], "/");
        }
        console.log(currentPath + " current path")
        try {
            var files = fs.readdirSync(currentPath)
        } catch (err) {
            return "Path not correct";
        }
        files.forEach(element => {
            if (pathSplited[i] != '')
                pathArray.push([element, i, pathSplited[i]]);
        });
    }
    var newData = await checkData(pathArray);
    if (newData.length != 0) sendData(newData);
    for (var element of pathSplited) {
        var value = await getPathData(element)
        pathDataArray.push(value);
    }
    return pathDataArray;
}

// function makePathArray(pathSplited, pathArray, pathString, nestedLevel) {
//     nestedLevel++;
//     if (pathSplited[0].length == 0 || (pathString != "" && !fs.statSync(pathString + "/" + pathSplited[0]).isDirectory())) {
//         return pathArray
//     }
//     pathString = path.join(pathString, pathSplited[0], "/");
//     try {
//         var files = fs.readdirSync(pathString)
//     } catch (err) {
//         return "Path not correct";
//     }
//     files.forEach(element => {
//         if (pathSplited[0] != '')
//             pathArray.push([element, nestedLevel, pathSplited[0]]);
//     });
//     pathSplited.shift();
//     return makePathArray(pathSplited, pathArray, pathString, nestedLevel);
// }
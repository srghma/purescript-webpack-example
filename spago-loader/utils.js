const path = require('path')
const childProcess = require('child-process-promise')

module.exports.matchModule = function matchModule(str) {
  const srcModuleRegex = /(?:^|\n)module\s+([\w\.]+)/i

  const matches = str.match(srcModuleRegex)

  return matches && matches[1]
}

module.exports.getSpagoRelaviteOutputPath = async function getSpagoRelaviteOutputPath() {
  const command = "spago path output"

  return childProcess.exec(command)
    .then((result) => {
      const relativePath = result.stdout.trim()

      return relativePath
    })
}

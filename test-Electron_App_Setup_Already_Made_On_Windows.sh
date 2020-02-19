cd "C:\Users\werty\Downloads\tests\2020-02-16_App_Recipt_Project"
npm init
npm install --save-dev electron
echo Change the directory to the directory of the project. > README.txt

#tee -a main.js << EOF
#const { app, BrowserWindow } = require('electron')
#
#function createWindow () {
#  // Create the browser window.
#  const win = new BrowserWindow({
#    width: 800,
#    height: 600,
#    webPreferences: {
#      nodeIntegration: true
#    }
#  })
#
#  // and load the index.html of the app.
#  win.loadFile('index.html')
#
#  // Open the DevTools.
#  win.webContents.openDevTools()
#}
#
#// This method will be called when Electron has finished
#// initialization and is ready to create browser windows.
#// Some APIs can only be used after this event occurs.
#app.whenReady().then(createWindow)
#
#// Quit when all windows are closed.
#app.on('window-all-closed', () => {
#  // On macOS it is common for applications and their menu bar
#  // to stay active until the user quits explicitly with Cmd + Q
#  if (process.platform !== 'darwin') {
#    app.quit()
#  }
#})
#
#app.on('activate', () => {
#  // On macOS it's common to re-create a window in the app when the
#  // dock icon is clicked and there are no other windows open.
#  if (BrowserWindow.getAllWindows().length === 0) {
#    createWindow()
#  }
#})
#
#// In this file you can include the rest of your app's specific main process
#// code. You can also put them in separate files and require them here.
#EOF
#tee -a index.html << EOF
#<!DOCTYPE html>
#<html>
#  <head>
#    <meta charset="UTF-8">
#    <title>Hello World!</title>
#    <!-- https://electronjs.org/docs/tutorial/security#csp-meta-tag -->
#    <meta http-equiv="Content-Security-Policy" content="script-src 'self' 'unsafe-inline';" />
#  </head>
#  <body>
#    <h1>Hello World!</h1>
#    <!-- We are using node <script>document.write(process.versions.node)</script>,
#    Chrome <script>document.write(process.versions.chrome)</script>,
#    and Electron <script>document.write(process.versions.electron)</script>. -->
#  </body>
#</html>
#EOF
#echo . > main.css
##echo "Change the 'project.json' file to match the project." > README.txt
##echo "Change the node to electron in the test scetion." >> README.txt
#tee -a README.txt << EOF
#Change the 'project.json' file to match the project.
#Change the 'node' to 'electron' in the test scetion.
#EOF
#explorer .

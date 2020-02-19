const { app, BrowserWindow } = require('electron')
const  ipc = require("electron").ipcMain;

let wlx = 805;
let hlx = 630;
let wwin = 815;
let hwin = 657;
function createWindow () 
{
  
  const win = new BrowserWindow({
    width: wwin,
    height: hwin,
    webPreferences: {
      nodeIntegration: true
    }
  })
  
  win.loadFile('index.html')
  
}

app.whenReady().then(createWindow)

app.on('window-all-closed', () => {
  
  if (process.platform !== 'darwin') 
  {
    app.quit()
  }

})

app.on('activate', () => {
  
  if (BrowserWindow.getAllWindows().length === 0) 
  {
    createWindow()
  }

})



//Run code on the window.
ipc.on('load',function()
{
  
  
  
});
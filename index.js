const { app, BrowserWindow } = require('electron')
const  ipc = require("electron").ipcMain;

function createWindow () {
  
  const win = new BrowserWindow({
    width: "930px",
    height: "730px",
    webPreferences: {
      nodeIntegration: true
    },
    //resizable: false
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
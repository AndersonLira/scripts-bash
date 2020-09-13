import java.awt.*;
import java.awt.event.*;
import java.awt.datatransfer.*;
public class SetPass{
    public static void main(String[] args){
        try{
            Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
            StringSelection stringSelection = new StringSelection( "passhere" );
            clipboard.setContents(stringSelection, stringSelection);            
            Robot robot = new Robot();

            robot.keyPress(KeyEvent.VK_ALT);
            robot.keyPress(KeyEvent.VK_TAB);
            robot.keyRelease(KeyEvent.VK_TAB);
            robot.keyRelease(KeyEvent.VK_ALT);
    
            robot.delay(500);
            robot.keyPress(KeyEvent.VK_CONTROL);
            robot.keyPress(KeyEvent.VK_V);
            robot.keyRelease(KeyEvent.VK_V);
            robot.keyRelease(KeyEvent.VK_CONTROL);
        }catch(Exception ex){

        }
    }
}
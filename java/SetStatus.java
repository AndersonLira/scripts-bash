import java.awt.*;
import java.awt.event.*;
import java.awt.datatransfer.*;
import java.awt.PointerInfo;
public class SetStatus{
    private static Robot robot;
    static Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
    static int delay = 1000;
    public static void main(String[] args){
        try{
            
            robot = new Robot();
            robot.keyPress(KeyEvent.VK_ALT);
            robot.keyPress(KeyEvent.VK_TAB);
            robot.keyRelease(KeyEvent.VK_TAB);
            robot.keyRelease(KeyEvent.VK_ALT);
            moveAndClick(46,147,delay);
            moveAndClick(223,247);
            moveAndClick(53,285);
            moveMouse(782,512,5);
            robot.delay(500);
            doubleClick();
            String actualStatus = copy();
            String newStatus = actualStatus.equals("Working") ? "Launching" : "Working";
            String icon = newStatus.equals("Launching") ? "knife_fork_plate" : "sightly_smiling_face";
            paste(newStatus);
            moveAndClick(751,515,delay);
            moveAndClick(645,614,delay);

            paste(icon);
            moveAndClick(592,682,delay);
            moveAndClick(1142,629, delay);

            // for(int i = 0;i < 1000;i++){
            //     robot.delay(50);

            //     PointerInfo a = MouseInfo.getPointerInfo();
            //     Point b = a.getLocation();
            //     int x = (int) b.getX();
            //     int y = (int) b.getY();
            //     System.out.println("y: " + y);
            //     System.out.println("x: " + x);
            // }

            // robot.keyPress(KeyEvent.VK_CONTROL);
            // robot.keyPress(KeyEvent.VK_V);
            // robot.keyRelease(KeyEvent.VK_V);
            // robot.keyRelease(KeyEvent.VK_CONTROL);

            // //change field
            // robot.delay(500);
            // robot.keyPress(KeyEvent.VK_TAB);
            // robot.keyRelease(KeyEvent.VK_TAB);
            // stringSelection = new StringSelection( "xTq2b4RpyEUq" );
            // clipboard.setContents(stringSelection, stringSelection);            

            // //paste pass
            // robot.delay(500);
            // robot.keyPress(KeyEvent.VK_CONTROL);
            // robot.keyPress(KeyEvent.VK_V);
            // robot.keyRelease(KeyEvent.VK_V);
            // robot.keyRelease(KeyEvent.VK_CONTROL);

            // //change field
            // robot.keyPress(KeyEvent.VK_TAB);
            // robot.keyRelease(KeyEvent.VK_TAB);
            

        }catch(Exception ex){

        }
    }
    public static void moveMouse(int x, int y, int maxTimes) {
        for(int count = 0;(MouseInfo.getPointerInfo().getLocation().getX() != x || 
                MouseInfo.getPointerInfo().getLocation().getY() != y) &&
                count < maxTimes; count++) {
            robot.mouseMove(x, y);
        }
    }
    public static void moveAndClick(int x,int y){
        moveMouse(x,y,5);
        robot.mousePress(InputEvent.BUTTON1_MASK);
        robot.mouseRelease(InputEvent.BUTTON1_MASK);

    }
    public static void moveAndClick(int x, int y, int delay){
        robot.delay(delay);
        moveAndClick(x,y);
    }
    public static void paste(String value){
        
        StringSelection stringSelection = new StringSelection( value );
        clipboard.setContents(stringSelection, stringSelection);            

        robot.delay(500);
        robot.keyPress(KeyEvent.VK_CONTROL);
        robot.keyPress(KeyEvent.VK_V);
        robot.keyRelease(KeyEvent.VK_V);
        robot.keyRelease(KeyEvent.VK_CONTROL);

    } 
    public static void doubleClick(){
        robot.mousePress(InputEvent.BUTTON1_DOWN_MASK);
        robot.mouseRelease(InputEvent.BUTTON1_DOWN_MASK);
        robot.mousePress(InputEvent.BUTTON1_DOWN_MASK);
        robot.mouseRelease(InputEvent.BUTTON1_DOWN_MASK);        
    } 
    public static String copy(){
        robot.keyPress(KeyEvent.VK_CONTROL);
        robot.keyPress(KeyEvent.VK_C);
        robot.keyRelease(KeyEvent.VK_C);
        robot.keyRelease(KeyEvent.VK_CONTROL);
        robot.delay(delay);

        try{
            Transferable tran = clipboard.getContents(null);
    
            if (tran != null && tran.isDataFlavorSupported(DataFlavor.stringFlavor)) {
    
                String clipboardContent = (String) tran.getTransferData(DataFlavor.stringFlavor);
    
                System.out.println(clipboardContent.toString());
                return clipboardContent.toString();
            }
        }catch(Exception ex){}
        return "";
    } 
}
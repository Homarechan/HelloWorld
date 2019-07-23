// Hello World on a mobile Java device

package helloworld;

import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

public class HelloWorld extends MIDlet {

    public HelloWorld()
    {
        Form form = new Form("Hello World");
        form.append("Hello world!");
        Display.getDisplay(this).setCurrent(form);
    }

    protected void pauseApp() {  }
    protected void startApp() throws
        javax.microedition.midlet.MIDletStateChangeException {  }
    protected void destroyApp(boolean parm1) throws
        javax.microedition.midlet.MIDletStateChangeException {  }
}
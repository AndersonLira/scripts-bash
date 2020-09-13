

import java.io.IOException;
import java.io.*;
import java.nio.file.*;
import java.net.InetSocketAddress;

import com.sun.net.httpserver.HttpExchange;
import com.sun.net.httpserver.HttpHandler;
import com.sun.net.httpserver.HttpServer;
import java.util.Date;

public class MiniServerCitrix {
    public static void main(String[] args) throws Exception {
        HttpServer server = HttpServer.create(new InetSocketAddress(8080), 0);
        server.createContext("/context/PRLService", new MyHandler());
        server.setExecutor(null); // creates a default executor
        server.start();
    }

    static class MyHandler implements HttpHandler {
        @Override
        public void handle(HttpExchange t) throws IOException {
            System.out.println("New Request: " + new Date().toString());
            synchronized(MyHandler.class) {
                String id = new Date().toString();
                writeRequest(t);
                writeNewRequest(id);
                while(!newResponse(id)){
                    try{
                        Thread.sleep(300);
                    }catch(Exception e){}
                }
                String response = readFile("response.txt");
                t.sendResponseHeaders(200, response.length());
                OutputStream os = t.getResponseBody();
                os.write(response.getBytes());
                os.close();
            }
        }
    }



    public static void writeRequest(HttpExchange t) throws IOException{
        InputStreamReader isr =  new InputStreamReader(t.getRequestBody(),"utf-8");
        BufferedReader br = new BufferedReader(isr);
        
        // From now on, the right way of moving from bytes to utf-8 characters:
        
        int b;
        StringBuilder buf = new StringBuilder(512);
        while ((b = br.read()) != -1) {
            buf.append((char) b);
        }
        
        
        String request = buf.toString().replace("\n"," ").replace("\r"," ");
        try (PrintWriter out = new PrintWriter("request.txt")) {
            out.println(request.trim());
        }
        br.close();
        isr.close();        
    }

    public static void writeNewRequest(String id) throws IOException{
        try (PrintWriter out = new PrintWriter("new_request.txt")) {
            out.println(id);
        }
    }

    public static Boolean newResponse(String id)  throws IOException{
        String nr = readFile("new_response.txt");
        return nr.trim().contentEquals(id.trim());
    }

    static String readFile(String path)  throws IOException 
        {
            byte[] encoded = Files.readAllBytes(Paths.get(path));
            return new String(encoded, "utf-8");
        }    

}
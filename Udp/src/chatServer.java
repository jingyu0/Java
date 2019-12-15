//Udp通信服务器端
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;

public class chatServer {
    public static void main(String[] args) {
        ServerSocket s = null;
        Socket s1;
        String sendString = "你好啊";
        OutputStream slout;
        DataOutput dos;
        try{
            s = new ServerSocket(5600);
        }catch(Exception e){
            e.printStackTrace();
        }

        while(true){
            try{
                s1 = s.accept();
                slout = s1.getOutputStream();
                dos =  new DataOutputStream(slout);
                dos.writeUTF(sendString);
                slout.close();
                s1.close();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }
}
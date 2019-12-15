//Udp通信客户端
import java.io.DataInputStream;
import java.io.InputStream;
import java.net.Socket;

public class chatClient {
    public static void main(String[] args) throws Exception{
        int c;
        Socket s1;
        InputStream s1In;
        DataInputStream dis;
        s1 = new Socket("localhost",5600);
        s1In = s1.getInputStream();
        dis = new DataInputStream(s1In);
        String st=new String(dis.readUTF());
        System.out.println(st);
        s1In.close();
        s1.close();
    }

}
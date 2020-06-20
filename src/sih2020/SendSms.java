package sih2020;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Date;
 
import javax.net.ssl.HttpsURLConnection;
 
public class SendSms {
     
    public static void sendSmsReg(int n,String number ,String inst1 ,long token)
    {
//      System.out.println(message);
//      System.out.println(number);
        try
        {
         
        String apiKey="Y7Vza5GpPNnGnJd7DtattWYD4S005wl8LTl4qKAREUemFqGVja3xvhnB3tPB";
        String sendId="FSTSMS";
        //important step...
        
        String language="unicode";
        
        String message="\r\n" +"Dear user, you have been successfully registered on VACCINE monitoring portal.\r\n Your TOKEN is :"+token
				+"\n& Institute ID is :"+inst1+"Keep the details safe for tracking your vaccines";
        
        switch(n) {
        case 1: message="प्रिय वापरकर्त्या, आपण व्हॅकसिन मॉनिटरींग पोर्टलवर यशस्वीरित्या नोंदणी केली आहे. आपला टोकन "+token+" आहे आणि संस्था आयडी  "+inst1+" आहे आपल्या लसींचा मागोवा घेण्यासाठी तपशील सुरक्षित ठेवा";
//        		language="unicode"
        break;
        		
        case 2: message="प्रिय उपयोगकर्ता, आपको सफलतापूर्वक VACCINE निगरानी पोर्टल पर पंजीकृत किया गया है। आपका टोकन "+token+" है और संस्थान आईडी  "+inst1+" है। अपने टीकों को ट्रैक करने के लिए विवरण सुरक्षित रखें।";
		break;
		
        case 3: message="ప్రియమైన వినియోగదారు, మీరు VACCINE పర్యవేక్షణ పోర్టల్‌లో విజయవంతంగా నమోదు చేయబడ్డారు. మీ టోకెన్   "+token+" & ఇన్స్టిట్యూట్ ID "+inst1+" మీ టీకాలను ట్రాక్ చేయడానికి వివరాలను సురక్షితంగా ఉంచండి";
		break;
		
        case 4: message="ಪ್ರಿಯ ಬಳಕೆದಾರರೇ, ನೀವು ವ್ಯಾಸೈನ್ ಮಾನಿಟರಿಂಗ್ ಪೋರ್ಟಲ್‌ನಲ್ಲಿ ಯಶಸ್ವಿಯಾಗಿ ನೋಂದಾಯಿಸಲ್ಪಟ್ಟಿದ್ದೀರಿ. ನಿಮ್ಮ ಟೋಕನ್     "+token+" ಮತ್ತು ಇನ್ಸ್ಟಿಟ್ಯೂಟ್ ಐಡಿ   "+inst1 +" ನಿಮ್ಮ ಲಸಿಕೆಗಳನ್ನು ಪತ್ತೆಹಚ್ಚಲು ವಿವರಗಳನ್ನು ಸುರಕ್ಷಿತವಾಗಿರಿಸಿ";
		break;
		
        case 6: message="அன்புள்ள பயனரே, நீங்கள் வெற்றிகரமாக VACCINE கண்காணிப்பு போர்ட்டலில் பதிவு செய்யப்பட்டுள்ளீர்கள். உங்கள் டோக்கன்  "+token+" & நிறுவன ஐடி "+inst1+" உங்கள் தடுப்பூசிகளைக் கண்காணிக்க விவரங்களை பாதுகாப்பாக வைத்திருங்கள்\r\n"; 
        break;
        }
        
//        String message="\r\n" +"Dear parents, you haven't came for your child's last vacccine (Type here)."+new Date();
        message=URLEncoder.encode(message, "UTF-8");
        
         
        String route="p";
        //password="nik@123"
         
        String myUrl="https://www.fast2sms.com/dev/bulk?authorization="+apiKey+"&sender_id="+sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+number;
         
        //sending get request using java..
         
        URL url=new URL(myUrl);
         
        HttpsURLConnection con=(HttpsURLConnection)url.openConnection(); 
        con.setRequestMethod("GET");
        con.setRequestProperty("User-Agent", "Mozilla/5.0");
        con.setRequestProperty("cache-control", "no-cache");
        System.out.println("Wait..............");
         
        int code=con.getResponseCode();
         
        System.out.println("Response code : "+code);
         
        StringBuffer response=new StringBuffer();
         
        BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
         
        while(true)
        {
            String line=br.readLine();
            if(line==null)
            {
                break;
            }
            response.append(line);
        }
         
        System.out.println(response);
         
         
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
         
    } 
    
    public static void sendSmsNotify(int n,String number)
    {
//      System.out.println(message);
//      System.out.println(number);
        try
        {
         
        String apiKey="Y7Vza5GpPNnGnJd7DtattWYD4S005wl8LTl4qKAREUemFqGVja3xvhnB3tPB";
        String sendId="FSTSMS";
        //important step...
        String message="\r\n" +"Dear parents, you haven't came for your child's last vacccine (Type here)."+new Date();
        message=URLEncoder.encode(message, "UTF-8");
        String language="english";
         
        String route="p";
        //password="nik@123"
         
        String myUrl="https://www.fast2sms.com/dev/bulk?authorization="+apiKey+"&sender_id="+sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+number;
         
        //sending get request using java..
         
        URL url=new URL(myUrl);
         
        HttpsURLConnection con=(HttpsURLConnection)url.openConnection(); 
        con.setRequestMethod("GET");
        con.setRequestProperty("User-Agent", "Mozilla/5.0");
        con.setRequestProperty("cache-control", "no-cache");
        System.out.println("Wait..............");
         
        int code=con.getResponseCode();
         
        System.out.println("Response code : "+code);
         
        StringBuffer response=new StringBuffer();
         
        BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
         
        while(true)
        {
            String line=br.readLine();
            if(line==null)
            {
                break;
            }
            response.append(line);
        }
         
        System.out.println(response);
         
         
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
         
    } 
    
    
    public static void sendSmsDelay(int n,String number)
    {
//      System.out.println(message);
//      System.out.println(number);
        try
        {
         
        String apiKey="Y7Vza5GpPNnGnJd7DtattWYD4S005wl8LTl4qKAREUemFqGVja3xvhnB3tPB";
        String sendId="FSTSMS";
        //important step...
        String message="\r\n" +"Dear parents, you haven't came for your child's last vacccine (Type here)."+new Date();
        message=URLEncoder.encode(message, "UTF-8");
        String language="english";
         
        String route="p";
        //password="nik@123"
         
        String myUrl="https://www.fast2sms.com/dev/bulk?authorization="+apiKey+"&sender_id="+sendId+"&message="+message+"&language="+language+"&route="+route+"&numbers="+number;
         
        //sending get request using java..
         
        URL url=new URL(myUrl);
         
        HttpsURLConnection con=(HttpsURLConnection)url.openConnection(); 
        con.setRequestMethod("GET");
        con.setRequestProperty("User-Agent", "Mozilla/5.0");
        con.setRequestProperty("cache-control", "no-cache");
        System.out.println("Wait..............");
         
        int code=con.getResponseCode();
         
        System.out.println("Response code : "+code);
         
        StringBuffer response=new StringBuffer();
         
        BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
         
        while(true)
        {
            String line=br.readLine();
            if(line==null)
            {
                break;
            }
            response.append(line);
        }
         
        System.out.println(response);
         
         
        }catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
         
    } 
    
    
    
    
    
     
    public static void main(String[] args) {
        System.out.println("Program started.....");
         
        String message="\r\n" +"Dear parents, you haven't came for your child's last vacccine (Type here)."+new Date();
        SendSms.sendSmsReg(1, "9511664226","a",23);
         
    }
}
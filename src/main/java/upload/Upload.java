package upload;


import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;


public class Upload {


    public Upload() {
    }
    

    
    
    public String uploadAvatarToCloud(String urlImg){
        Cloudinary cloudinary = new Cloudinary("https://cloudinary.com/console");
        Map map = ObjectUtils.asMap(
                "cloud_name", "hoangghiepp1302",
                "api_key", "812912856824389",
                "api_secret", "DoKmiWg4Kdmeor63MxfhAvWTo2w",
                "folder","avatar");
      
        File file = new File(urlImg);
        try {
            Map uploadResult = cloudinary.uploader().upload(file, map);
            return (String)uploadResult.get("url");
        } catch (IOException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    
    public String uploadImgToCloud(String urlImg){
        Cloudinary cloudinary = new Cloudinary("https://cloudinary.com/console/media_library/folders/%2F");
        Map map = ObjectUtils.asMap(
                "cloud_name", "hoangghiepp1302",
                "api_key", "812912856824389",
                "api_secret", "DoKmiWg4Kdmeor63MxfhAvWTo2w",
                "folder","shoes shop");
        File file = new File(urlImg);
        try {
            Map uploadResult = cloudinary.uploader().upload(file, map);
            return (String)uploadResult.get("url");
        } catch (IOException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        }
    }
    
    //CLOUDINARY_URL=cloudinary://812912856824389:DoKmiWg4Kdmeor63MxfhAvWTo2w@hoangghiepp1302
    public static void main(String[] args){
        Cloudinary cloudinary = new Cloudinary("https://cloudinary.com/console");
        Map map = ObjectUtils.asMap( 
                "cloud_name", "hoangghiepp1302",
                "api_key", "812912856824389",
                "api_secret", "DoKmiWg4Kdmeor63MxfhAvWTo2w",
                "folder","avatar");
        File file = new File("/home/hiepnguyen/Pictures/ava/ava1.jpg");
        try {
            Map uploadResult = cloudinary.uploader().upload(file, map);
             System.out.println((String)uploadResult.get("url"));
        } catch (IOException ex) {
            Logger.getLogger(Upload.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
}

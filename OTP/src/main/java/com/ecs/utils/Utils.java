package com.ecs.utils;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.imageio.ImageIO;
import javax.imageio.ImageReadParam;
import javax.imageio.stream.ImageInputStream;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.client.j2se.BufferedImageLuminanceSource;
import com.google.zxing.common.HybridBinarizer;
import com.ecs.uidai.response.utils.Base64;
import com.github.jaiimageio.jpeg2000.impl.J2KImageReader;
import com.github.jaiimageio.jpeg2000.impl.J2KImageReaderSpi;




public class Utils {

	public static byte[] getBytes(InputStream is) throws IOException {

	    int len;
	    int size = 1024;
	    byte[] buf;

	    if (is instanceof ByteArrayInputStream) {
	      size = is.available();
	      buf = new byte[size];
	      len = is.read(buf, 0, size);
	    } else {
	      ByteArrayOutputStream bos = new ByteArrayOutputStream();
	      buf = new byte[size];
	      while ((len = is.read(buf, 0, size)) != -1)
	        bos.write(buf, 0, len);
	      buf = bos.toByteArray();
	    }
	    return buf;
	}
	
	public static boolean isPropertyNull(String propertyValue) {
		if((propertyValue == null) ||(propertyValue.trim().length() == 0)) {
			return true;
		}
		
		return false;
	}
	
	public static boolean isEmpty(String data) {
		if (data == null)
			return true;

		if (data.trim().length() == 0)
			return true;

		return false;
		} 
	
	
	
	 public static String decodeQRCode(Object qrCodeImage) throws com.google.zxing.NotFoundException {

	      com.google.zxing.Result result = null;
		try {
	              BufferedImage bufferedImage;
	              byte[] decoded = Base64.decode((String)qrCodeImage);
	              bufferedImage = ImageIO.read(new ByteArrayInputStream(decoded));

	          BufferedImageLuminanceSource source = new BufferedImageLuminanceSource(bufferedImage);
	          BinaryBitmap bitmap = new BinaryBitmap(new HybridBinarizer(source));

	          result = new MultiFormatReader().decode(bitmap);
	      } catch (IOException e) {
	      System.out.println("Error reading the QR Code");
	      }
	      return result.getText();
	  }
	 
		public static String J2KImageReader(byte[] imageData)
		{
			J2KImageReaderSpi j2kspi = new J2KImageReaderSpi();
			com.github.jaiimageio.jpeg2000.impl.J2KImageReader j2kImageReader = new J2KImageReader(j2kspi);

			try (ImageInputStream input = ImageIO.createImageInputStream(new ByteArrayInputStream(imageData)))
			{

				j2kImageReader.setInput(input);
				ImageReadParam imageReadParam = j2kImageReader.getDefaultReadParam();
				BufferedImage image = j2kImageReader.read(0, imageReadParam);
				ByteArrayOutputStream b = new ByteArrayOutputStream();
				ImageIO.write(image, "jpg", b );
				return Base64.encode(b.toByteArray());

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}

		}
	  
		
	  
}



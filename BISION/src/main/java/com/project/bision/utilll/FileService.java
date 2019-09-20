package com.project.bision.utilll;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

public class FileService {
	private static final String FILE_PATH = "C:/test/";

	// ?åå?ùº ???û•
	public static String saveFile(MultipartFile uploadFile) {
		String savedFileName = UUID.randomUUID().toString();
		
		try {
			uploadFile.transferTo(new File(FILE_PATH + savedFileName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		
		return savedFileName;
	}
	
	// ?åå?ùº ?Ç≠?†ú
	public static void deleteFile(String fileName) {
		File file = new File(FILE_PATH + fileName);
		if(file.exists()) file.delete();
	}
}

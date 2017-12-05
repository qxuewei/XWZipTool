# XWZipTool
iOS 解压缩工具类

##轻量级加压缩工具类

  1. 导入XWZipTool
  2. Build Phases -> Compile Sources -> ZipArchive.m  添加 -fno-objc-arc
  3. 解压 (无密码或有密码zip压缩包)
	  ```
	  /**
	 压缩包解压
	
	 @param fromFilePath 压缩包原始路径
	 @param saveFilePath 解压后保存路径
	 @return 是否解压成功
	 */
	+ (BOOL)unZipFromFilePath:(NSString *)fromFilePath toSaveFilePath:(NSString *)saveFilePath;
	
	/**
	 解压有密码的压缩包]
	 
	 @param fromFilePath 压缩包原始路径
	 @param password 压缩包密码
	 @param saveFilePath 解压后保存路径
	 @return 是否解压成功
	 */
	+ (BOOL)unZipFromFilePath:(NSString *)fromFilePath password:(NSString *)password toSaveFilePath:(NSString *)saveFilePath;
  ```
  
  需要解压的地方导入 
  ```
  #import "XWZipTool.h"
  ```
  
  无密码
  ```
  [XWZipTool unZipFromFilePath:zipFilePath toSaveFilePath:savePath]
  ```
  
  有密码
  ```
  [XWZipTool unZipFromFilePath:zipFilePath password:@"当前压缩包密码" toSaveFilePath:savePath]
  ```


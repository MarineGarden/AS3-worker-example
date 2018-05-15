package  {
	
	import flash.utils.ByteArray;
	import flash.filesystem.File;
	import flash.filesystem.FileStream;
	import flash.filesystem.FileMode;
	
	public class FileByteArray extends ByteArray {

		public function FileByteArray(f:File) {
			// constructor code
			var reader:FileStream = new FileStream();
			reader.open(f, FileMode.READ);
			reader.readBytes(this);
		}

	}
	
}

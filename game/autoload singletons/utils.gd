class_name Utils



static func chancef(chance: float)-> bool:
	return randf() < chance


static func chance100(chance: float)-> bool:
	return chancef(chance / 100.0)


static func chance50()-> bool:
	return chance100(50)


static func load_directory_recursively(path: String)-> Array[String]:
	var result: Array[String]= []
	path+= "/"
	var dir:= DirAccess.open(path)
	
	for sub_dir in dir.get_directories():
		result.append_array(load_directory_recursively(path + sub_dir))
	
	for file in dir.get_files():
		result.append(path + file)
	
	return result
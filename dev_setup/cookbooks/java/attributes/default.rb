include_attribute "deployment"
default[:java6][:java_home] = "/usr/java/jdk"
default[:java6][:path] = default[:java6][:java_home] + "/bin"

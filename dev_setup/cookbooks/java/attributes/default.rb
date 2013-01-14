include_attribute "deployment"
default[:java6][:java_home] = "/usr/java/jdk1.6.0_30/jre"
default[:java6][:path] = default[:java6][:java_home] + "/bin"

How to install Supplies4Salons

1) copy all .dll files (jogl_es1, jogl_es2.dll, jogl_gl2.dll, glugen-rt.dll, etc)    from    s4s\jogl-2.0-windows-i586\jogl-2.0-windows-i586\lib  to  your jre/bin folder (eg: c:/program files/java/bin/)
note: if you have more than one jre/jdk installed, copy the dlls into every bin folder

2) add your jre/bin/ folder(s) to the classpath (eg:Classpath ./;C:/program Files/java/jre/bin/;C:/Program Files/java/jdk1_6/jre/bin;)

3) add a java.library.path environment variable, also with c:/program files/jre/bin/ folder(s)  (eg: new env variable "java.library.path" ./;C:/program Files/java/jre/bin/;C:/Program Files/java/jdk1_6/jre/bin;)

4) double-click S4S.jar to launch, choose 3dclient. Use 'w's'a'd' to move and left mouse click to add blue items to your basket.
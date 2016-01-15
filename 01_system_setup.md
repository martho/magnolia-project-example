Voraussetzungen
===============

Jeweils die aktuellsten Versionen von:

* Java 8
* Maven 3
* Tomcat 8

Konfigurationen
===============

Tomcat User einrichten
----------------------

Für das Deployment den entsprechenden User konfigurieren.
Dazu in der Datei

<pre><code>%TOMCAT_HOME%/conf/tomcat-users.xml</code></pre>

die folgenden Zeilen ergänzen, wenn noch nicht vorhanden.

    <role rolename="admin"/>
    <role rolename="admin-script"/>
    <role rolename="admin-gui"/>
    <role rolename="admin"/>
    <role rolename="manager"/>
    <role rolename="manager-script"/>
    <role rolename="manager-gui"/>
    <role rolename="manager-jmx"/>
    <user password="password" roles="admin,admin-script,admin-gui,manager,manager-script,manager-gui,manager-jmx" username="admin"/>

Maven einrichten
----------------

Damit die Tomcat-User Settings nicht für alle Devoloper vorgeben sind, sollte der oben angelegte User in den eigen Maven-Settings bekannt gemacht werden.

Hierzu in der Datei

<pre><code>%MAVEN_HOME%/conf/settings.xml</code></pre>

 oder 

<pre><code>~/.m2/settings.xml</code></pre>

Die folgenden Zeilen ergäzen:

    <servers>
        <server>
            <id>TomcatServer</id>
            <username>admin</username>
            <password>password</password>
        </server>
    </servers>

Diese Server-Konfiguration benutzt dann das 'tomcat7-maven-plugin' welches in der Parent-POM unseres Magnolia-Project-Templates benutzt wird. 
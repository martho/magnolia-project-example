Basis ist Magnolia 5.4.3 und das Theme Modul sollte vorerst nicht verwendet werden, da es noch zu Fehlern kommt.

Project Module Setup
====================

mvn archetype:generate -DarchetypeCatalog=https://nexus.magnolia-cms.com/content/groups/public/

archetype = 5 = magnolia-project-archtype
archetype version = 4 = 1.2.2

groupId = de.etecture.projects
artifactId = magnolia-project-example
version = 1.0-SNAPSHOT
package = de.etecture.projects
magnolia-version 5.4.3
project-name = magnolia-project-example

Y = to procced


Content Module Setup
====================
Go into the project folder:

cd magnolia-project-example

mvn archetype:generate -DarchetypeCatalog=https://nexus.magnolia-cms.com/content/groups/public/

archetype = 1 = magnolia-module-archtype
archetype version = 4 = 1.2.2

groupId: de.etecture.projects
artifactId: magnolia-project-example-content
version: 1.0-SNAPSHOT
package: de.etecture.projects
magnolia-version: 5.4.3
module-class-name: Content
module-name: magnolia-project-example: Magnolia Module content

Y = to procced

Templates Module Setup
======================
Go into the project folder:

cd magnolia-project-example

mvn archetype:generate -DarchetypeCatalog=https://nexus.magnolia-cms.com/content/groups/public/

archetype = 1 = magnolia-module-archtype
archetype version = 4 = 1.2.2

groupId: de.etecture.projects
artifactId: magnolia-project-example-templates
version: 1.0-SNAPSHOT
package: de.etecture.projects
magnolia-version: 5.4.3
module-class-name: Templates
module-name: magnolia-project-example: Magnolia Module templates

Y = to procced

Theme Module Setup
==================
Go into the project folder:

cd magnolia-project-example

mvn archetype:generate -DarchetypeCatalog=https://nexus.magnolia-cms.com/content/groups/public/

archetype = 4 = magnolia-theme-archtype
archetype version = 4 = 1.2.2

groupId = de.etecture.projects
artifactId = magnolia-project-example-theme
version = 1.0-SNAPSHOT
package = de.etecture.projects
magnolia-stk-version = 2.9
magnolia-version 5.4.3
theme-name = magnolia-project-example: Magnolia Module theme

Y = to procced

Project Parent POM erweitern
============================

			<plugin>
				<groupId>org.apache.tomcat.maven</groupId>
				<artifactId>tomcat7-maven-plugin</artifactId>
				<version>2.2</version>
				<configuration>
					<url>http://localhost:8080/manager/text</url>
					<server>TomcatServer</server>
					<path>/magnolia-project-example</path>
				</configuration>
			</plugin>

WebApp POM erweitern
====================

    <dependency>
      <groupId>de.etecture.projects</groupId>
      <artifactId>magnolia-project-example-content</artifactId>
      <version>1.0-SNAPSHOT</version>
    </dependency>
    <dependency>
      <groupId>de.etecture.projects</groupId>
      <artifactId>magnolia-project-example-templates</artifactId>
      <version>1.0-SNAPSHOT</version>
    </dependency>
    <dependency>
      <groupId>de.etecture.projects</groupId>
      <artifactId>magnolia-project-example-theme</artifactId>
      <version>1.0-SNAPSHOT</version>
    </dependency>
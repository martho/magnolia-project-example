# Templating in Magnolia

* https://documentation.magnolia-cms.com/display/DOCS/Hello+Magnolia

Dieses Beginner Tutorial wird normalerweise direkt im Tomcat Verzeichnis durchgeführt. Wir wollen dies aber innerhalb des Maven Projektes tun.
Hierfür können wir den ersten Abschnitt "Installing Magnolia" überspringen und fangen bei "Creating a template module" an.

Optionen 1 und 2 lassen wir beziehen sich auf das Tomcat Verzeichnis, jedoch finden wir den wichtigen Teil der Templatestruktur auch in dem Maven Projekt wieder.

Anstatt

webapps/
└── magnoliaAuthor/
    └── hello-magnolia/
        ├── dialogs/
        ├── webresources/
        └── templates/

gehen wir in das Projekt unter

magnolia-project-example /
└── magnolia-project-example-templates /
    └── src /
        └── main /
            └── resources /
                └── magnolia-project-example-templates /
                    ├── dialogs/
                        ├── components/
                        └── pages/
                    ├── templates/
                        ├── components/
                        └── pages/
                    └── webresources/
                        └── css/

Das Beginner Tutorial kann nun vollständig in diesen Verzeichnissen vollzogen werden.

Wenn ein Arbeitsschritt abgeschlossen ist, müssen die Dateiänderungen über ein Build- und Deployment-Prozess in den Tomcat-Server deployed werden.
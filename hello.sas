/* Hello world in SAS */

* Writes as output title;
TITLE "Hello World!";
* writes to the log;
data _null_;
    PUT "Hello, World!";
run;
# blog-engine

Blog Engine is an MCV .NET Core 2.2 application.

## How to run it

Download the package or clone the repository. You'll find all of the files you need to run the application from Visual Studio (VS2019 Community edition was used in this case).
There is a SQL folder as part as the file structure in which you will find the startup schema and some sample data. An ER diagram can be found in this folder.

### SQL: Create Schema and add sample data

Run BlogEngine_Schema.sql script for creating the Blog and its authentication databases (Blog and BlogAuthentication). The script creates also some sample data for the application.

### Application: Run the code

Open BlogEngine.csproj and run it.

## Using the application

**Non-authnticated users**
* Will only see the Blog menu item and will be able to see published posts and comment on them.
* When adding a comment they will need to fill their Author Name and Email

**Authenticated users (with no role specified)**
* `Credentials -> Email: user.other@test.com, Password: Other123. (finishes in dot)`
* Same as non-authenticated users, but when commenting, the Author Name and Email will be populated automatically

**Authenticated users (Writer role)**
* `Credentials: Email: user.writer@test.com, Password: Writer123. (finishes in dot)`
* After login will be redirected to the Posts section in which the list of their own posts are showed and options are given depending on each post estate.
* Can also see the Blog section where all of the published posts (own and others') are showed.

**Authenticated users (Approver role)**
* `Credentials: Email: user.approver@test.com, Password: Approver123. (finishes in dot)`
* After login will be redirected to the Posts section in which the list of the pending for approval posts are showed.
* Can also see the Blog section where all of the published posts are showed.

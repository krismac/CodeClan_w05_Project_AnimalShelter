## Project Week 1 - PAWS Animal Shelter

Web Programming with Ruby - RESTful Ruby + Sinatra + PostgreSQL web app for the administration of an animal shelter.

This web application was my first project undertaken at CodeClan, after four weeks of learning basic Ruby programming, SQL and Sinatra. The project was to be completed within 6 days.

- One week to build an app that consolidates and expands on lessons to date:
- Object oriented programming with Ruby
- Test Driven Development
- Web Programming (REST, MVC)
- Interacting with a PostgreSQL database (CRUD)

The brief for the project was as follows:

```
Paws, the Scottish dog shelter accept orphaned or stray dogs and takes care of them 
until they can be adopted by a new owner. The shelter has a list of potential new owners for the animals. 
Animals may take a while to be trained up and made healthy before being available for adoption. 
They are looking for a management system to keep track of their animals and owners. 
They are also looking that the system might support an expansion plan into other pawed animals. MVP:

- A list of all their animals and their admission date
- Mark an animal as being adoptable/not adoptable
- Assign an animal to a new owner
- List all the owners and their adopted animals

Extensions:
- CRUD actions for animals/owners
- Have separate pages for animals ready for adoption and ones still in training/vet care
- Search for animals by breed/type
```

### Contraints

The finished product was to be completed using only Ruby, Sinatra, PostgreSQL and basic HTML/CSS.

```
The project must be built using only:
HTML / CSS
Ruby
Sinatra
PostgreSQL and the PG gem
```
We could not use:
- Any Object Relational Mapper (e.g. ActiveRecord)
- JavaScript. At all. Don't even think about it.
- Any pre-built CSS libraries, such as Bootstrap.
- Authentication. Assumed that the user already has secure access to the app

### My approach

At the outset, I created a Trello board with a work breakdown structure based on the MVP requirements. These were sub categorised by the [MoSCoW Priorisation](https://trello.com/b/N6nxF8x8/animal-shelter-kanban-w-moscow)

A first task was then to create a a [Use Case Diagram](LINK) to clearly define the system's users and their data requirements. This included the uses in the MVP, but also some extensions:
- full CRUD actions for owners and animals
- easily filtered views for adoptable/not adoptable animals
- search for animals by breed/type
- live tracking of progress for employees on the homepage

Next I created a [Class Diagram](LINK)and [Entity Relationship Diagram](LINK), before starting to code the project.

Similarly, Wireframe guides were drawn up to guide the process of applying CSS styling prior to starting on this.
I also used [Codepen.io](https://codepen.io/dashboard?type=view&opts_itemType=pen&opts_filter=all&opts_orderBy=id&opts_orderDirection=0&opts_tag=0&displayType=grid&previewType=iframe&page=0)to support with fine tuning the rendering. 

### The final product

- The application was completed within the 6 day timeframe
- It meets all the requirement of the MVP specifications
- It meets a number of further use cases identified in the planning stage / extensions brief.

The look of the finished application:.

##Screenshots:

- [Homepage](documentation/XXXX.png)
- [Animals Index](documentation/XXXX.png)
- [Animals Profile](documentation/XXXX.png)
- [Animals Index](documentation/XXXX.png)
- [Owner Profile](documentation/XXXX.png)
- [Matches Page](documentation/matches_page.png)
- [New Owner Form](documentation/XXXX.png)
- [New Animal Form](documentation/XXXX.png)

##Submission & Presentation
- [Code submission via Github repo](https://github.com/krismac/CodeClan_w05_Project_AnimalShelter.git)
- [Google Docs Presentations - 12/09/2018 (10m+5m Qs)](https://docs.google.com/presentation/d/1_FDw16pJIQCC5xAznNdObkJzt0c6EJJsvo3SvDyCAtw/edit?usp=sharing)
or
- [GIT Presentation - 12/09/2018 (10m+5m Qs)]( https://github.com/krismac/CodeClan_w05_Project_AnimalShelter/blob/master/paws_template_ppt/paws.pptx)

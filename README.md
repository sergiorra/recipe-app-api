<div align="center">
  <h1>Recipe App</h1>
  <blockquote>API to manage your own recipes with its ingredients and tags. The API also handles user management, so you can add multiple users to your system.</blockquote>
</div>

## ⭐️ Features

- Users management
- Token authentication
- Recipes, ingredients and tags endpoints
- Filter recipes by ingredients or tags
- Continuous Integration with Travis CI
- PostgreSQL as DB engine

## 📦 Installation

You need to have installed docker and docker-compose

## 🚀 Usage

Execute the following command to create the docker image and run it in a docker container locally

```
docker-compose up
```

- The root path of the API in the development server will be: `http://127.0.0.1:8000/api/`

## 📜 Documentation

<details><summary>Postman Collection to import</summary>

```
{
   "info":{
      "_postman_id":"5bd9aeaa-1eec-4a18-ac91-4b8919299dca",
      "name":"Recipe App",
      "schema":"https:\/\/schema.getpostman.com\/json\/collection\/v2.0.0\/collection.json"
   },
   "item":[
      {
         "name":"Users",
         "item":[
            {
               "name":"createUser",
               "_postman_id":"4f440d3b-2b26-492e-baf0-0739f4411813",
               "request":{
                  "method":"POST",
                  "header":[

                  ],
                  "body":{
                     "mode":"raw",
                     "raw":"{\r\n    \"email\": \"test@gmail.com\",\r\n    \"password\": \"testpass\",\r\n    \"name\": \"test\"\r\n}",
                     "options":{
                        "raw":{
                           "language":"json"
                        }
                     }
                  },
                  "url":"http:\/\/127.0.0.1:8000\/api\/user\/create\/"
               },
               "response":[

               ]
            },
            {
               "name":"getUserToken",
               "_postman_id":"c51e8c05-a782-4c28-b913-a3cca14dbcd9",
               "request":{
                  "method":"POST",
                  "header":[

                  ],
                  "body":{
                     "mode":"raw",
                     "raw":"{\r\n    \"email\": \"test@gmail.com\",\r\n    \"password\": \"testpass\"\r\n}",
                     "options":{
                        "raw":{
                           "language":"json"
                        }
                     }
                  },
                  "url":"http:\/\/127.0.0.1:8000\/api\/user\/token\/"
               },
               "response":[

               ]
            },
            {
               "name":"getUserDetails",
               "_postman_id":"d887fef4-7d68-4685-b603-75e8407d5889",
               "request":{
                  "method":"GET",
                  "header":[
                     {
                        "key":"Authorization",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c",
                        "type":"text"
                     }
                  ],
                  "url":"http:\/\/127.0.0.1:8000\/api\/user\/me\/"
               },
               "response":[

               ]
            },
            {
               "name":"updateUser",
               "_postman_id":"8e14c504-15d7-4d56-a927-4c7b50bdc298",
               "request":{
                  "method":"PUT",
                  "header":[
                     {
                        "key":"Authorization",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c",
                        "type":"text"
                     }
                  ],
                  "body":{
                     "mode":"raw",
                     "raw":"{\r\n    \"name\": \"test\",\r\n    \"email\": \"test@gmail.com\",\r\n    \"password\": \"testpass\"\r\n}",
                     "options":{
                        "raw":{
                           "language":"json"
                        }
                     }
                  },
                  "url":"http:\/\/127.0.0.1:8000\/api\/user\/me\/"
               },
               "response":[

               ]
            }
         ],
         "_postman_id":"ef86ff24-679e-4da8-b423-56cc38a4c397",
         "protocolProfileBehavior":{

         }
      },
      {
         "name":"Recipes",
         "item":[
            {
               "name":"getAllRecipes",
               "_postman_id":"63297965-ca71-4df8-8b29-c61a186d0196",
               "request":{
                  "method":"GET",
                  "header":[
                     {
                        "key":"Authorization",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c",
                        "type":"text"
                     }
                  ],
                  "url":"http:\/\/127.0.0.1:8000\/api\/recipe\/recipes"
               },
               "response":[

               ]
            },
            {
               "name":"getRecipeById",
               "_postman_id":"1f8caace-56aa-473c-9059-8401f094cdb3",
               "request":{
                  "method":"GET",
                  "header":[
                     {
                        "key":"Authorization",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c",
                        "type":"text"
                     }
                  ],
                  "url":"http:\/\/127.0.0.1:8000\/api\/recipe\/recipes\/2"
               },
               "response":[

               ]
            },
            {
               "name":"createRecipe",
               "_postman_id":"f9797fe8-b425-4362-8414-17123c76415d",
               "request":{
                  "method":"POST",
                  "header":[
                     {
                        "key":"Authorization",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c",
                        "type":"text"
                     }
                  ],
                  "body":{
                     "mode":"raw",
                     "raw":"{\r\n    \"title\": \"test2\",\r\n    \"ingredients\": [1],\r\n    \"tags\": [1],\r\n    \"time_minutes\": 5,\r\n    \"price\": 10.0\r\n}",
                     "options":{
                        "raw":{
                           "language":"json"
                        }
                     }
                  },
                  "url":"http:\/\/127.0.0.1:8000\/api\/recipe\/recipes\/"
               },
               "response":[

               ]
            },
            {
               "name":"filterRecipesByAttrs",
               "_postman_id":"3647d320-5f66-46c8-b6cd-338b790a4b74",
               "request":{
                  "method":"GET",
                  "header":[
                     {
                        "key":"Authorization",
                        "type":"text",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c"
                     }
                  ],
                  "url":{
                     "raw":"http:\/\/127.0.0.1:8000\/api\/recipe\/recipes?tags=1&ingredients=1",
                     "protocol":"http",
                     "host":[
                        "127",
                        "0",
                        "0",
                        "1"
                     ],
                     "port":"8000",
                     "path":[
                        "api",
                        "recipe",
                        "recipes"
                     ],
                     "query":[
                        {
                           "key":"tags",
                           "value":"1"
                        },
                        {
                           "key":"ingredients",
                           "value":"1"
                        }
                     ]
                  }
               },
               "response":[

               ]
            },
            {
               "name":"updateRecipe",
               "_postman_id":"e8abeb16-4523-49d5-bcc4-8ea49e48ff75",
               "request":{
                  "method":"PUT",
                  "header":[
                     {
                        "key":"Authorization",
                        "type":"text",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c"
                     }
                  ],
                  "body":{
                     "mode":"raw",
                     "raw":"{\r\n    \"title\": \"test22\",\r\n    \"ingredients\": [],\r\n    \"tags\": [1],\r\n    \"time_minutes\": 10,\r\n    \"price\": 9.0\r\n}",
                     "options":{
                        "raw":{
                           "language":"json"
                        }
                     }
                  },
                  "url":"http:\/\/127.0.0.1:8000\/api\/recipe\/recipes\/1\/"
               },
               "response":[

               ]
            }
         ],
         "_postman_id":"2afceefe-3cd0-40cb-bb60-09e571aa07b6",
         "protocolProfileBehavior":{

         }
      },
      {
         "name":"Ingredients",
         "item":[
            {
               "name":"createIngredient",
               "_postman_id":"5d4a1e1c-7be5-4b39-93a0-16959f9ebbbc",
               "request":{
                  "method":"POST",
                  "header":[
                     {
                        "key":"Authorization",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c",
                        "type":"text"
                     }
                  ],
                  "body":{
                     "mode":"raw",
                     "raw":"{\r\n    \"name\": \"testIngredient\"\r\n}",
                     "options":{
                        "raw":{
                           "language":"json"
                        }
                     }
                  },
                  "url":"http:\/\/127.0.0.1:8000\/api\/recipe\/ingredients\/"
               },
               "response":[

               ]
            },
            {
               "name":"getAllIngredients",
               "_postman_id":"1c3b80fa-0d9e-4e7a-bac8-732765377cc9",
               "request":{
                  "method":"GET",
                  "header":[
                     {
                        "key":"Authorization",
                        "type":"text",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c"
                     }
                  ],
                  "url":"http:\/\/127.0.0.1:8000\/api\/recipe\/ingredients\/"
               },
               "response":[

               ]
            }
         ],
         "_postman_id":"e8cbebf0-da69-44a7-93ae-04c997abb291",
         "protocolProfileBehavior":{

         }
      },
      {
         "name":"Tags",
         "item":[
            {
               "name":"createTag",
               "_postman_id":"42669de1-6267-4bfb-9530-8e17e21593bf",
               "request":{
                  "method":"POST",
                  "header":[
                     {
                        "key":"Authorization",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c",
                        "type":"text"
                     }
                  ],
                  "body":{
                     "mode":"raw",
                     "raw":"{\r\n    \"name\": \"testTag\"\r\n}",
                     "options":{
                        "raw":{
                           "language":"json"
                        }
                     }
                  },
                  "url":"http:\/\/127.0.0.1:8000\/api\/recipe\/tags\/"
               },
               "response":[

               ]
            },
            {
               "name":"getAllTags",
               "_postman_id":"a66f9e83-dfbf-4c98-8485-90d1282b5745",
               "request":{
                  "method":"GET",
                  "header":[
                     {
                        "key":"Authorization",
                        "value":"token bbb24e472af3bb0db70b74cfc1d29d78bc45ea9c",
                        "type":"text"
                     }
                  ],
                  "url":"http:\/\/127.0.0.1:8000\/api\/recipe\/tags\/"
               },
               "response":[

               ]
            }
         ],
         "_postman_id":"670392a7-d8e2-4750-9748-841be3130893",
         "protocolProfileBehavior":{

         }
      }
   ],
   "protocolProfileBehavior":{

   }
}
```

</details>

## ⚙️ Tech Stack

- Python
- Django
- Django REST Framework
- Docker
- Travis CI
- PostgreSQL

## 📝 License

This project is licensed under the terms of the
[MIT license](/LICENSE)

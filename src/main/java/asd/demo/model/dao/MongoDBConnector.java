/*
 * Author: Georges Bou Ghantous
 *
 * This class provides the methods to establish connection between ASD-Demo-app
 * and MongoDBLab cloud Database. The data is saved dynamically on mLab cloud database as
 * as JSON format.
 */
package asd.demo.model.dao;

import java.net.UnknownHostException;
import com.mongodb.client.MongoCollection;
import org.bson.Document;
import java.util.*;
import asd.demo.model.*;
import com.mongodb.Block;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;

public class MongoDBConnector {

    private List<Document> users = new ArrayList();
    private String owner;
    private String password;
    MongoDatabase shopDB = getMongoDB();

    public MongoDatabase getMongoDB(){
       MongoClientURI uri = new MongoClientURI(
        "mongodb://Calvin:<ASDAssignment1>@asd-assignment-shard-00-00-5im26.gcp.mongodb.net:27017,asd-assignment-shard-00-01-5im26.gcp.mongodb.net:27017,asd-assignment-shard-00-02-5im26.gcp.mongodb.net:27017/test?ssl=true&replicaSet=ASD-Assignment-shard-0&authSource=admin&retryWrites=true&w=majority");

       //MongoClient mongoClient = new MongoClient(uri);
       //MongoDatabase database = mongoClient.getDatabase("test");
       MongoDatabase db;
       try (MongoClient client = new MongoClient(uri)) {
            db = client.getDatabase(uri.getDatabase());
       }
       return db;
    }
    
    Block<Document> printBlock = new Block<Document>() {
        @Override
        public void apply(final Document document) {
            System.out.println(document.toJson());
        }
    };  
    public void showall(Users users) {
        for (User u : users.getList()) {
            System.out.println(u.getName());
        }
    }

    public void add(User user) {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds029496.mlab.com:29496/heroku_59pxdn6j");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            users.add(new Document("Username", user.getEmail()).append("Password", user.getPassword()).append("Name", user.getName()).append("Phone", user.getPhone()));
            MongoCollection<Document> userlist = db.getCollection("ASD-Demo-app-users"); //Create a collection ASD-Demo-app-users on mLab
            userlist.insertMany(users);
        }
    }

    public void showUsers() {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds029496.mlab.com:29496/heroku_59pxdn6j");
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-Demo-app-users");
            try (MongoCursor<Document> cursor = userlist.find().iterator()) {
                while (cursor.hasNext()) {
                    System.out.println(cursor.next().toJson());
                }
            }
        }
    }

    public Users loadUsers() {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds029496.mlab.com:29496/heroku_59pxdn6j");
        Users users;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            users = new Users();
            MongoCollection<Document> userlist = db.getCollection("ASD-Demo-app-users");
            for (Document doc : userlist.find()) {
                User user = new User((String) doc.get("Name"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Phone"));
                users.addUser(user);
            }
        }
        return users;
    }

    public User user(String email, String password) {
        MongoClientURI uri = new MongoClientURI("mongodb://" + this.owner + ":" + this.password + "@ds029496.mlab.com:29496/heroku_59pxdn6j");
        User user;
        try (MongoClient client = new MongoClient(uri)) {
            MongoDatabase db = client.getDatabase(uri.getDatabase());
            MongoCollection<Document> userlist = db.getCollection("ASD-Demo-app-users");
            Document doc = userlist.find(and(eq("Username", email), eq("Password", password))).first();
            user = new User((String) doc.get("Name"), (String) doc.get("Username"), (String) doc.get("Password"), (String) doc.get("Phone"));
        }
        return user;
    }

    public int add(int a, int b) {
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }
    
    public Item getItemList(){
        
        MongoClientURI uri = new MongoClientURI("mongodb://Calvin:<ASDAssignment1>@asd-assignment-shard-00-00-5im26.gcp.mongodb.net:27017,asd-assignment-shard-00-01-5im26.gcp.mongodb.net:27017,asd-assignment-shard-00-02-5im26.gcp.mongodb.net:27017/test?ssl=true&replicaSet=ASD-Assignment-shard-0&authSource=admin&retryWrites=true&w=majority");
        MongoClient client = new MongoClient(uri);
                MongoDatabase db = client.getDatabase(uri.getDatabase());
            
        MongoCollection<Document> databaseList = db.getCollection("Item");
        /*ItemList items = new ItemList();
        FindIterable<Document> findIterable = databaseList.find(new Document());
        
        findIterable.forEach(printBlock);
        */
        /*for (Document doc : databaseList.find()) {
            Item item = new Item((String) doc.get("id"), (String) doc.get("name"), (String) doc.get("dateListed"), (int) doc.get("stock"), (int) doc.get("soldQuantity"), (double) doc.get("price"), (String) doc.get("desc"), (String) doc.get("category"), (String) doc.get("yearMade"), (String) doc.get("sellerId"), (String) doc.get("condition"), (String) doc.get("color"), (String) doc.get("image"));
            items.addItem(item);
            System.out.println("Works");

        }*/
        Item item = new Item("01","1000 Piece Puzzle","01/01/2018",10,30,9.99,"Great Board Game","Puzzle","2017","01-Calvin","New","Brown","puzzle-img.jpg");
        return item;
    }
    public Users getUserList(){
        Users userList = new Users();
        userList.addUser(new User("john", "johnsmith@gmail.com", "1234", "0412933321"));
        userList.addUser(new User("john2", "johnsmith2@gmail.com", "12345", "0412944421"));
        userList.addUser(new User("John", "johnsmith@gmail.com", "Password123", "0416955386"));
        return userList;
    }
}


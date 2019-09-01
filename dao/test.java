/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package asd.demo.model.dao;
import java.net.UnknownHostException;
import com.mongodb.client.MongoCollection;
import org.bson.Document;
import java.util.*;
import asd.demo.model.*;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.and;
import static com.mongodb.client.model.Filters.eq;
import org.bson.conversions.Bson;
/**
 *
 * @author Cai weize
 */
public class test {
        public static void main(String[] args)
    {
        try
        {
    String uri = "mongodb+srv://weize:Holyshit1.@asd-assignment-5im26.gcp.mongodb.net/test?retryWrites=true&w=majority";
    MongoClientURI clientURI = new MongoClientURI(uri);
    MongoClient mongoClient = new MongoClient(clientURI);
    MongoDatabase mongoDatabase = mongoClient.getDatabase( "Product");
    MongoCollection collection = mongoDatabase.getCollection("ASD");
    FindIterable<Document> findIterable = collection.find();  
    MongoCursor<Document> mongoCursor = findIterable.iterator();  
            

            while(mongoCursor.hasNext()){  
                Document studentDocument = mongoCursor.next();
                System.out.println(studentDocument.getString("name"));
                //System.out.println(mongoCursor.next());  
             }  
        }
        catch (Exception e)
        {
            System.err.println(e.getMessage());
        }
        
    }
    

    
    




    }
    
    


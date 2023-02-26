//
//  ExpertModel.swift
//  signup9
//
//  Created by arwanmri on 24/07/1444 AH.
//
import Foundation
import Firebase
import FirebaseStorage
import FirebaseFirestore

struct expertinfo : Identifiable {
var id: String
var exname : String
var image : String
var expinfo : String
var link : String
var desc : String
var type: String
var desc2 : String
}
class ExpertModel : ObservableObject {

@Published var list = [expertinfo]()

func getData() {
    //GET REFERENCE FROM DATABASe
    let db = Firestore.firestore()
    
    //read a reference to the database
    
    db.collection("ExpertData").getDocuments {snapshot, err in
        //chech the error
        if err == nil{
            
            
            //no error
            if let snapshot = snapshot{
            DispatchQueue.main.async {

                                    self.list =  snapshot.documents.map{ d in return
                                        expertinfo(id:d.documentID,
                                                   exname: d["exname"] as? String ?? ""
                                                   ,image: d["image"] as? String ?? "",
                                                   expinfo: d["expinfo"] as? String ?? "",
                                                   link: d["link"] as? String ?? "",
                                                   desc: d["desc"] as? String ?? "",
                                                  type: d["type"] as? String ?? "" ,
                                                   desc2: d["desc2"] as? String ?? ""
                                        )
                                    }
                                }
                                
                            }
                        }
                            else{
                                
                            }
                            
                        }
                    }
                }

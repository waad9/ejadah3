////
////  VoteModel.swift
////  signup9
////
////  Created by waad. on 29/07/1444 AH.
////
//
//import Firebase
//import FirebaseStorage
//import FirebaseFirestore
//import Foundation
//
//
////struct Vote : Identifiable {
//////    var  isSelected_1: String
//////    var  isSelected_2 : String
//////    var isSelected_3 : String
//////   // var expinfo : String
////}
//
//class VoteModel : ObservableObject {
//    
//    @Published var Vlist = [Vote]()
//    
//    //func getData()
//    
//    
//    init(Vlist: [Vote]){
//        
//        self.Vlist = Vlist
//        //GET REFERENCE FROM DATABASe
//        let db = Firestore.firestore()
//        
//        //read a reference to the database
//        
//        db.collection("VoteData").getDocuments {(snap, err) in
//            //chech the error
//            if err != nil{
//                print("Error")
//                return
//            }
//            
//            //no error
//            
//            for i in snap!.documentChanges {
//                let isSelected_1 = i.document.get("vote")as! String
//                let isSelected_2 = i.document.get("vote")as! String
//                let isSelected_3 = i.document.get("vote")as! String
//                if let VoteID = UUID(uuidString: isSelected_1){
//                DispatchQueue.main.async {
//                    
//                    self.Vlist.append(Vote(vote: isSelected_1, vote: isSelected_2, vote:isSelected_3 ))
//                    
//                    
//                    
//                    
//                    //                        self.Vlist =  snap!.documents.map{ d in return
//                    //                                Vote(id:d.documentID,
//                    //                                           exname: d["exname"] as? String ?? ""
//                    //                                           ,image: d["image"] as? String ?? "",
//                    //                                           expinfo: d["expinfo"] as? String ?? ""
//                    //                                )
//                    //
//                }
//                }
//                
//            }
//            
//        }
//    }
//    func index(of Vlist = [Vote]) -> Int {
//        
//        for index in 0..<self.Vlist.count{
//            if self.Vlist[index].id == Vlist.id {
//                return index
//            
//            }
//        }
//                return 0
//                        
//                    }
//                    
//                }
//           // }
//      //  }
//let testvote = VoteModel(Vlist: testData)

using {sap.capire.bookshop as my} from '../db/schema';

service AdminService {
  entity Authors as projection on my.Authors;

  entity Books   as projection on my.Books
    actions {
      action testPaulsAction() returns {
        stock : Integer
      };
    };

  action testUnboundAction() returns {
    testNumber : Integer
  }

  entity Genres  as projection on my.Genres;


}

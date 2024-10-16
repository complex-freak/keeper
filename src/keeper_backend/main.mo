import Text "mo:base/Text";
import List "mo:base/List";
actor Keeper {
  public type Note = {
    title: Text;
    content: Text;
  };

  var notes: List.List<Note> = List.nil<Note>();

  public func createNote(titleText: Text, contentText: Text) {

    let newNote: Note = {
      title = titleText;
      content = contentText;
    };

    notes := List.push(newNote, notes);
  };

  public query func readNotes(): async [Note] {
    return List.toArray(notes);
  }
}
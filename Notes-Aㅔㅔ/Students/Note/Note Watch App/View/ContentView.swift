//
//  ContentView.swift
//  Note Watch App
//
//  Created by 진아현 on 7/1/25.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    //MARK: - FUNCTION
    func getDocumentDirectory() -> URL {
        let path = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return path[0]
    }
    func save() {
//        dump(notes)
        do {
            //MARK: - 1. Convert the notes array to data using JSONEncoder
            let data = try JSONEncoder().encode(notes)
            
            //MARK: - 2. Create a new URL to save the file using the getDocumentDirectory
            let url = getDocumentDirectory().appendingPathComponent("notes")
            
            //MARK: - 3. Write the data to the given URL
            try data.write(to: url)
        } catch {
            print("Saving datsa has failed!")
        }
    }
    
    func load() {
        DispatchQueue.main.async {
            do {
                //MARK: - 1. Get the notes URL path
                let url = getDocumentDirectory().appendingPathComponent("notes")
                
                //MARK: - 2. Create a new property for the data
                let data = try Data(contentsOf: url)
                
                //MARK: - 3. Decode the data
                notes = try JSONDecoder().decode([Note].self, from: data)
            } catch {
                //MARK: - Do nothing
            }
        }
    }
    
    func delete(offsets: IndexSet) {
        withAnimation {
            notes.remove(atOffsets: offsets)
            save()
        }
    }
    
    //MARK: - BODY
    var body: some View {
        NavigationStack {
            VStack {
                HStack(alignment: .center, spacing: 6) {
                    TextField("Add New Note", text: $text)
                    
                    Button {
                        //MARK: - 1. Only run the button's action when the text field is not empty
                        guard text.isEmpty == false else { return }
                        //MARK: - 2. Create a new note item and initialize it with the text value
                        let note = Note(id: UUID(), text: text)
                        
                        //MARK: - 3. Add the new note item to the notes array(append)
                        notes.append(note)
                        
                        //MARK: - 4. Make the text field empty
                        text = ""
                        
                        //MARK: - 5. Save the notes(fucntion)
                        save()
                        
                    } label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 42, weight: .semibold))
                    }
                    .fixedSize()
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(.accentColor)
                }
                
                Spacer()
                
                if notes.count >= 1 {
                    List {
                        ForEach(0..<notes.count, id: \.self) { i in
                            NavigationLink(destination: DetailView(note: notes[i], count: notes.count, index: i)) {
                                HStack {
                                    Capsule()
                                        .frame(width: 4)
                                        .foregroundColor(.accentColor)
                                    
                                    Text(notes[i].text)
                                        .lineLimit(lineCount)
                                        .padding(.leading, 5)
                                }
                            }
                        }
                        .onDelete(perform: delete)
                    }
                } else {
                    Spacer()
                    Image(systemName: "note.text")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.gray)
                        .opacity(0.25)
                        .padding(25)
                    Spacer()
                }
            }
            .navigationTitle("Notes")
            .onAppear(perform: {
                load()
            })
        }
    }
}

#Preview {
    ContentView()
}

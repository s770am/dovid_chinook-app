require_relative 'contact'
require_relative 'notes'


Contact.destroy_all
Note.destroy_all

new_contact = Contact.create(first_name: "Sree")
Note.create(contact_id: new_contact.id, body:"Great")
Note.create(contact_id: new_contact.id, body:"Cool")
Note.create(contact_id: new_contact.id, body:"Nice")
Note.create(contact_id: new_contact.id, body:"Good")

new_contact


test_contact = Contact.create(first_name: "Sree")
Note.create(contact_id: test_contact.id, body:"Testing")

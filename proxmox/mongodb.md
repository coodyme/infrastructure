# MongoDB

MongoDB is a NoSQL database that uses a document-oriented data model, storing data in JSON-like documents with dynamic schemas. This design offers flexibility and scalability, making it ideal for handling large volumes of data. MongoDB supports indexing, replication, and load balancing, ensuring high performance and availability, and can distribute data across multiple servers, making it well-suited for big data applications.

To create a new Proxmox VE MongoDB LXC, run the command below in the Proxmox VE Shell.

```bash
bash -c "$(wget -qLO - https://github.com/tteck/Proxmox/raw/main/ct/mongodb.sh)"
```

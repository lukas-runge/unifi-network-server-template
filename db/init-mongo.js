const MONGO_DBNAME = process.env.MONGO_DBNAME;
const MONGO_USER = process.env.MONGO_USER;
const MONGO_PASS = process.env.MONGO_PASS;

db.getSiblingDB(`${MONGO_DBNAME}`).createUser({user: MONGO_USER, pwd: MONGO_PASS, roles: [{role: "dbOwner", db: MONGO_DBNAME}]});
db.getSiblingDB(`${MONGO_DBNAME}_stat`).createUser({user: MONGO_USER, pwd: MONGO_PASS, roles: [{role: "dbOwner", db: MONGO_DBNAME}]});
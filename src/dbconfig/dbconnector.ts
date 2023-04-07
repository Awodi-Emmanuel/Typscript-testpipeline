import { Pool } from 'pg';

export default new Pool ({
    max: 20,
    connectionString: 'postgres://emmyts:mypass@localhost:5432/mydb',
    idleTimeoutMillis: 30000
});
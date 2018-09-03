import {
  getConnections,
  closeConnections,
} from '../../utils';

let db, conn;

describe('first test', () => {
  beforeEach(async () => {
    ({db, conn} = await getConnections());
    const ctx = {
      role: 'authenticated'
    };
    // db.setContext(ctx);
    // conn.setContext(ctx);
  });
  afterEach(async () => {
    await closeConnections({db, conn});
  });
  it('users', async () => {
    const user = await db.one(
      `INSERT INTO app_public.users (display_name, username) VALUES ($1, $2) RETURNING *`, [
        'sinai',
        'sinai'
      ]
    );
    expect(user).toBeTruthy();
  });
  it('companies', async () => {
    const company = await db.one(
      `INSERT INTO app_public.companies (name) VALUES ($1) RETURNING *`, [
        'sinai'
      ]
    );
    expect(company).toBeTruthy();
  });
  it('facilities', async () => {
    const company = await db.one(
      `INSERT INTO app_public.companies (name) VALUES ($1) RETURNING *`, [
        'sinai'
      ]
    );
    expect(company).toBeTruthy();
    const facility = await db.one(
      `INSERT INTO app_public.facilities (name, company_id) VALUES ($1, $2) RETURNING *`, [
        'sinai west',
        company.id
      ]
    );
    expect(facility).toBeTruthy();
  });
});

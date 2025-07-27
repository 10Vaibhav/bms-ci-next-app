import { client } from "@repo/db/client";

export default async function Home() {

  const user = await client.user.findFirst();

  return (
    <div>
        name:
        {user?.username}
        password:
        {user?.password}

        <div>
          <h1>hello ji</h1>
        </div>
    </div>
  );
}

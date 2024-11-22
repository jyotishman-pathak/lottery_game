"use client"

import React from 'react'
import { signIn, signOut } from "next-auth/react";
const Home = () => {
  return (
    <div>
      hello
      <button onClick={() => signIn("google")}>Sign in with Google</button>;
      <button onClick={() => signOut()}>Sign out</button>;
    </div>
  )
}







export default Home

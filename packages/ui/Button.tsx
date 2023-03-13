import { useState } from "react";

export const Button = () => {
  const [count, setCount] = useState(0);
  return (
    <button
      onClick={() => {
        setCount((prevState) => prevState + 1);
      }}
    >
      Booped {count} times
    </button>
  );
};

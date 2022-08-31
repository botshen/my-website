import React from "react";
type htmlLoaderProps = {
  html: string;
};
export const HtmlLoader: React.FC<htmlLoaderProps> = ({ html }) => {
  return <div>{html}</div>;
};

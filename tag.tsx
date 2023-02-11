import {join} from "https://deno.land/std@0.130.0/path/mod.ts"
import { Data } from "lume/core.ts";
import { getPosts, getTags } from "./posts.ts";
import { BlogPosts } from "./index.tsx";

export default function* (): Generator<Data> {
  const tags = getTags();
  for (const tag of getTags()) {
    const title = `#${tag}`;
    const posts = getPosts(tag);

    yield {
      url: join("/", "tag", tag),
      title,
      tag,
      layout: "base.tsx",
      content: () => (
        <>
          <BlogPosts posts={posts} />
        </>
      ),
    };
  }
}

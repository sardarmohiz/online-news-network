-- Online News Network: allow the authenticated admin to manage news.
-- Keep sign-ups disabled in Supabase Auth after creating your admin account.
create policy "Authenticated users can insert news"
on public.news for insert to authenticated
with check (true);

create policy "Authenticated users can update news"
on public.news for update to authenticated
using (true) with check (true);

create policy "Authenticated users can delete news"
on public.news for delete to authenticated
using (true);

-- ROC Command v2.2 — Administration Center

alter table public.profiles drop constraint if exists profiles_role_check;
alter table public.profiles add constraint profiles_role_check check (role in ('founder','deputy_director','supervisor','officer'));

drop policy if exists "Users can view own profile" on public.profiles;
create policy "Users can view own profile" on public.profiles for select to authenticated using (id = auth.uid());

drop policy if exists "Founder can view all profiles" on public.profiles;
create policy "Founder can view all profiles" on public.profiles for select to authenticated using (exists(select 1 from public.profiles p where p.id=auth.uid() and p.role='founder' and p.status='active'));

drop policy if exists "Founder can update profiles" on public.profiles;
create policy "Founder can update profiles" on public.profiles for update to authenticated using (exists(select 1 from public.profiles p where p.id=auth.uid() and p.role='founder' and p.status='active')) with check (role in ('founder','deputy_director','supervisor','officer') and status in ('active','inactive'));

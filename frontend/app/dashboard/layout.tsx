'use client';
import { useEffect } from 'react';
import { useRouter } from 'next/navigation';
import { AppShell } from '@/components/app-shell';
import { useCRMStore } from '@/store/use-crm-store';

export default function DashboardLayout({ children }: { children: React.ReactNode }) {
  const { token } = useCRMStore();
  const router = useRouter();

  useEffect(() => {
    if (!token && !localStorage.getItem('xeno_token')) {
      router.push('/login');
    }
  }, [token, router]);

  return <AppShell>{children}</AppShell>;
}

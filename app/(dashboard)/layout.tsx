import '@/styles/global.css';
import { Inter } from '@next/font/google';
import clsx from 'clsx';
import GlassPane from '@/components/GlassPane';
import Sidebar from '@/components/Sidebar';

const inter = Inter({
  variable: '--font-inter',
});

export default function DashboardRootLayout({ children }) {
  return (
    <html lang="en" className={clsx(inter.variable, 'dark')}>
      <head />
      <body className="h-screen w-screen candy-mesh p-6">
        <GlassPane className="w-full h-full flex items-center">
          <Sidebar />
          {children}
        </GlassPane>
        <div id="modal"></div>
      </body>
    </html>
  );
}

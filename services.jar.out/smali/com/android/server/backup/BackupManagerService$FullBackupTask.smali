.class abstract Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "FullBackupTask"
.end annotation


# instance fields
.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;

    .prologue
    .line 3595
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3596
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 3595
    return-void
.end method


# virtual methods
.method final sendEndBackup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3624
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 3626
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3623
    :cond_0
    :goto_0
    return-void

    .line 3627
    :catch_0
    move-exception v0

    .line 3628
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full backup observer went away: endBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3629
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method final sendOnBackupPackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3612
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 3615
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onBackupPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3611
    :cond_0
    :goto_0
    return-void

    .line 3616
    :catch_0
    move-exception v0

    .line 3617
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full backup observer went away: backupPackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3618
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method final sendStartBackup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3601
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 3603
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartBackup()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3600
    :cond_0
    :goto_0
    return-void

    .line 3604
    :catch_0
    move-exception v0

    .line 3605
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full backup observer went away: startBackup"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3606
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullBackupTask;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.class Lcom/android/launcher3/LauncherModel$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$item:Lcom/android/launcher3/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 0

    .line 247
    iput-wide p1, p0, Lcom/android/launcher3/LauncherModel$2;->val$itemId:J

    iput-object p3, p0, Lcom/android/launcher3/LauncherModel$2;->val$item:Lcom/android/launcher3/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher3/LauncherModel$2;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 249
    sget-object v0, Lcom/android/launcher3/LauncherModel;->sBgDataModel:Lcom/android/launcher3/model/BgDataModel;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-wide v1, p0, Lcom/android/launcher3/LauncherModel$2;->val$itemId:J

    iget-object v3, p0, Lcom/android/launcher3/LauncherModel$2;->val$item:Lcom/android/launcher3/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/LauncherModel$2;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/LauncherModel;->checkItemInfoLocked(JLcom/android/launcher3/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 251
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

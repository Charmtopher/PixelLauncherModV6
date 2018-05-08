.class Lcom/android/launcher3/LauncherAppState$2;
.super Lcom/android/launcher3/util/SettingsObserver$Secure;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/LauncherAppState;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherAppState;Landroid/content/ContentResolver;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/launcher3/LauncherAppState$2;->this$0:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0, p2}, Lcom/android/launcher3/util/SettingsObserver$Secure;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final onSettingChanged(Z)V
    .locals 2

    .line 125
    if-eqz p1, :cond_0

    .line 126
    new-instance p1, Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/launcher3/LauncherAppState$2;->this$0:Lcom/android/launcher3/LauncherAppState;

    .line 127
    iget-object v0, v0, Lcom/android/launcher3/LauncherAppState;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-static {p1}, Lcom/android/launcher3/notification/NotificationListener;->requestRebind(Landroid/content/ComponentName;)V

    .line 129
    :cond_0
    return-void
.end method

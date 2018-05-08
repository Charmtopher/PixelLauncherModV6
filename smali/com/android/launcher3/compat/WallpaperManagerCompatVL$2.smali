.class Lcom/android/launcher3/compat/WallpaperManagerCompatVL$2;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVL;


# direct methods
.method constructor <init>(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$2;->this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVL;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/android/launcher3/compat/WallpaperManagerCompatVL$2;->this$0:Lcom/android/launcher3/compat/WallpaperManagerCompatVL;

    const-string v0, "wallpaper_parsed_colors"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/launcher3/compat/WallpaperManagerCompatVL;->access$100(Lcom/android/launcher3/compat/WallpaperManagerCompatVL;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.class Lcom/android/launcher3/Launcher$PrefChangeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 0

    .prologue
    .line 4100
    iput-object p1, p0, Lcom/android/launcher3/Launcher$PrefChangeHandler;->this$0:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 4105
    const-string/jumbo v0, "pref_theme"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_disableSmartSpace"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_forceColoredQsb"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_twoBubblesQsb"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "pref_removeHaze"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4109
    :goto_0
    const-string/jumbo v0, "pref_forceRoundIcon"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "pref_forceRoundIcon"

    const v2, 0x1

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4107
    iget-object v0, p0, Lcom/android/launcher3/Launcher$PrefChangeHandler;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->clearIconCache()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    :cond_0
    return-void

    .line 4107
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Launcher$PrefChangeHandler;->this$0:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->recreate()V

    goto :goto_0
.end method

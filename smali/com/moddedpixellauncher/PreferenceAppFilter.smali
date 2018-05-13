.class public Lcom/moddedpixellauncher/PreferenceAppFilter;
.super Lcom/google/android/apps/nexuslauncher/NexusAppFilter;
.source "PreferenceAppFilter.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/NexusAppFilter;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p1, p0, Lcom/moddedpixellauncher/PreferenceAppFilter;->mContext:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public shouldShowApp(Landroid/content/ComponentName;)Z
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 23
    iget-object v1, p0, Lcom/moddedpixellauncher/PreferenceAppFilter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "hidden_apps"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 24
    .local v0, "hiddenApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/NexusAppFilter;->shouldShowApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

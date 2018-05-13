.class public Lcom/moddedpixellauncher/HiddenAppsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "HiddenAppsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;,
        Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/LauncherActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mClickListener:Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;

.field private mContext:Landroid/content/Context;

.field private mResolveInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelections:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "clickListener"    # Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    const v1, 0x7f04003e

    invoke-direct {p0, p1, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 36
    iput-object p1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mContext:Landroid/content/Context;

    .line 37
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 39
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "hidden_apps"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 41
    .local v0, "hiddenApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSelections:Ljava/util/Set;

    .line 44
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSelections:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 46
    iput-object p2, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mResolveInfos:Ljava/util/List;

    .line 47
    iput-object p3, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mClickListener:Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;

    .line 48
    return-void
.end method

.method static synthetic access$100(Lcom/moddedpixellauncher/HiddenAppsAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/moddedpixellauncher/HiddenAppsAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mResolveInfos:Ljava/util/List;

    return-object v0
.end method

.method private notifyItemChanged(ILandroid/widget/ListView;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;

    invoke-static {v1}, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->access$000(Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;)V

    goto :goto_0
.end method


# virtual methods
.method public addSelectionsToHideList()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hidden_apps"

    iget-object v2, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSelections:Ljava/util/Set;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method public clearSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSelections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 81
    invoke-virtual {p0}, Lcom/moddedpixellauncher/HiddenAppsAdapter;->notifyDataSetChanged()V

    .line 82
    const-string v0, "Hide apps"

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 92
    if-nez p2, :cond_0

    .line 93
    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040046

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 94
    new-instance v1, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;

    iget-object v2, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mClickListener:Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;

    invoke-direct {v1, p0, p2, v2}, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;-><init>(Lcom/moddedpixellauncher/HiddenAppsAdapter;Landroid/view/View;Lcom/moddedpixellauncher/HiddenAppsAdapter$ItemClickListener;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;

    .line 97
    .local v0, "holder":Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;
    invoke-virtual {v0, p1}, Lcom/moddedpixellauncher/HiddenAppsAdapter$ViewHolder;->setPosition(I)V

    .line 98
    return-object p2
.end method

.method isSelected(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSelections:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toggleSelection(ILjava/lang/String;Landroid/widget/ListView;)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSelections:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSelections:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 62
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/moddedpixellauncher/HiddenAppsAdapter;->notifyItemChanged(ILandroid/widget/ListView;)V

    .line 63
    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSelections:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSelections:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hidden"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    :goto_1
    return-object v0

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/moddedpixellauncher/HiddenAppsAdapter;->mSelections:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "Hide apps"

    goto :goto_1
.end method

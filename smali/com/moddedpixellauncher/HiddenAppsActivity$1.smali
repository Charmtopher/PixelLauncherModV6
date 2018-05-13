.class Lcom/moddedpixellauncher/HiddenAppsActivity$1;
.super Ljava/lang/Object;
.source "HiddenAppsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moddedpixellauncher/HiddenAppsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/LauncherActivityInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/moddedpixellauncher/HiddenAppsActivity;


# direct methods
.method constructor <init>(Lcom/moddedpixellauncher/HiddenAppsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/moddedpixellauncher/HiddenAppsActivity;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/moddedpixellauncher/HiddenAppsActivity$1;->this$0:Lcom/moddedpixellauncher/HiddenAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/LauncherActivityInfo;)I
    .locals 3
    .param p1, "o1"    # Landroid/content/pm/LauncherActivityInfo;
    .param p2, "o2"    # Landroid/content/pm/LauncherActivityInfo;

    .prologue
    .line 37
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 34
    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    check-cast p2, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1, p2}, Lcom/moddedpixellauncher/HiddenAppsActivity$1;->compare(Landroid/content/pm/LauncherActivityInfo;Landroid/content/pm/LauncherActivityInfo;)I

    move-result v0

    return v0
.end method

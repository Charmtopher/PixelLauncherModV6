.class public Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static xk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 202
    const-string v0, "Data included in the database:\n\n1. Launched App Package Name\n2. App Launch Time\n3. Semantic Place(e.g. Cafe, Airport) when app is launched\n4. Lat&Lng when an app is launched\n"

    sput-object v0, Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;->xk:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 211
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Share User Data"

    .line 212
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;->xk:Ljava/lang/String;

    .line 213
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "OK"

    new-instance v1, Lcom/google/android/apps/nexuslauncher/h;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/h;-><init>(Lcom/google/android/apps/nexuslauncher/SettingsActivity$ShareDatabaseFragment;)V

    .line 214
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "Cancel"

    .line 249
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 211
    return-object p1
.end method

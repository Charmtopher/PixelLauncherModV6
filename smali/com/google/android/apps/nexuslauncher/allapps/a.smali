.class public Lcom/google/android/apps/nexuslauncher/allapps/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final sc:Ljava/lang/String;

.field public final shortcutId:Ljava/lang/String;

.field public final xs:J

.field public final xt:Ljava/lang/String;

.field public final xu:Ljava/lang/String;

.field public final xv:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

.field public final xw:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/ShortcutInfo;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->sc:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->shortcutId:Ljava/lang/String;

    .line 20
    iput-wide p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->xs:J

    .line 21
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->xt:Ljava/lang/String;

    .line 22
    iput-object p6, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->xu:Ljava/lang/String;

    .line 23
    iput-object p7, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->xv:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 24
    iput-object p8, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->xw:Lcom/android/launcher3/ShortcutInfo;

    .line 25
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->sc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/a;->xv:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v1, v1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

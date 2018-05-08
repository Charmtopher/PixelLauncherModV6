.class Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/AutoInstallsLayout$TagParser;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/DefaultLayoutParser;


# direct methods
.method constructor <init>(Lcom/android/launcher3/DefaultLayoutParser;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 4

    .line 239
    iget-object p1, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object p1, p1, Lcom/android/launcher3/DefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lcom/android/launcher3/Partner;->get(Landroid/content/pm/PackageManager;)Lcom/android/launcher3/Partner;

    move-result-object p1

    .line 240
    if-eqz p1, :cond_0

    .line 241
    iget-object v0, p1, Lcom/android/launcher3/Partner;->mResources:Landroid/content/res/Resources;

    .line 242
    const-string v1, "partner_folder"

    const-string v2, "xml"

    .line 243
    iget-object p1, p1, Lcom/android/launcher3/Partner;->mPackageName:Ljava/lang/String;

    .line 242
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 244
    if-eqz p1, :cond_0

    .line 245
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 246
    const-string v1, "folder"

    invoke-static {p1, v1}, Lcom/android/launcher3/AutoInstallsLayout;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 248
    new-instance v1, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;

    iget-object v2, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, p0, Lcom/android/launcher3/DefaultLayoutParser$PartnerFolderParser;->this$0:Lcom/android/launcher3/DefaultLayoutParser;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/DefaultLayoutParser;->getFolderElementsMap(Landroid/content/res/Resources;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;-><init>(Lcom/android/launcher3/AutoInstallsLayout;Landroid/util/ArrayMap;)V

    .line 249
    invoke-virtual {v1, p1}, Lcom/android/launcher3/AutoInstallsLayout$FolderParser;->parseAndAdd(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v0

    return-wide v0

    .line 252
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method
